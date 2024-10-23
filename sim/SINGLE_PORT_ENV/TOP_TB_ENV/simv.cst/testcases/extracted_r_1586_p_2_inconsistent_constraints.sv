class c_1586_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1586_2;
    c_1586_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10101zxz00z00x0z1x0z10zz0111z1zzxxxzzxxzzxzxxzxxxzzzxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
