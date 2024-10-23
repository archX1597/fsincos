class c_1504_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1504_2;
    c_1504_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxz1zz1x010x0z01x1101zzz01zzx1zzzxxxzxzxzzzxxzxxzxzzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
