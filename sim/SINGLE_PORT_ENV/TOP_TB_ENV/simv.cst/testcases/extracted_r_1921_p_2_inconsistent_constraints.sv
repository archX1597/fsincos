class c_1921_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1921_2;
    c_1921_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zzz1xz010z1z1x10z00x0z0z11zxxzxzzzxzxzzxxxzxxzxxxxzxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
