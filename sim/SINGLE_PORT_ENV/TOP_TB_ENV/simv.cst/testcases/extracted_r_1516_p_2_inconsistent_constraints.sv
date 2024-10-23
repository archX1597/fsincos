class c_1516_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1516_2;
    c_1516_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x1z1x0x0zxx00z1000zzzz1z11x0zzxxxxzzzzxxxxzxzzzzxxzxzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
