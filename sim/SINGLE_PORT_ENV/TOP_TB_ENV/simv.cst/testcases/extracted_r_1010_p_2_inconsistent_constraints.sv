class c_1010_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1010_2;
    c_1010_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz00xzzzzzz0110zzx0xx0x1zxxzx10xxzzzxzzzzxxxzxzxzzzxzzzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
