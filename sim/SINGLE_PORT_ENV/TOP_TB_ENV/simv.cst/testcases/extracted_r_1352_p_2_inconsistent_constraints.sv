class c_1352_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1352_2;
    c_1352_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0xzz00x0111zz1110z00zzz00100xxzxzxxzxxzxxzxxzzzxzxzzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
