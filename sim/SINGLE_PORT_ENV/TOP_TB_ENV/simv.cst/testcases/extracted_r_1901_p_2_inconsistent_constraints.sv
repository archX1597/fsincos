class c_1901_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1901_2;
    c_1901_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xxxzzx0xx00xx1xxx110zz0x1zz0xzxzzzxzzxzzzzxzxzxzzzzxxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
