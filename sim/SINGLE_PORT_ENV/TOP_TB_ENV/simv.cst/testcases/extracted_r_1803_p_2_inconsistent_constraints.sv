class c_1803_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1803_2;
    c_1803_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x101x0z0xx00z00x0xzxz0zx101x101xxxzzzzxzzzzxzxzzzxzzzzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
