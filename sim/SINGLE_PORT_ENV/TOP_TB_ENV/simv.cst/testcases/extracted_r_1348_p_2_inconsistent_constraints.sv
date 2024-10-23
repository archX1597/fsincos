class c_1348_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1348_2;
    c_1348_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzzzz11z0x1x1110zzx0zz010xxzx1xxxzxxzxzxxzxzxxzxzzxxxxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
