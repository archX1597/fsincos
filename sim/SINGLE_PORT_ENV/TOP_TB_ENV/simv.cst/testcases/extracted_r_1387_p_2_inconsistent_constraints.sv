class c_1387_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1387_2;
    c_1387_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00xx0111x0111zx0x00x00110xxz1xzxzzzxzxxzzxxxzzzzxzzxzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
