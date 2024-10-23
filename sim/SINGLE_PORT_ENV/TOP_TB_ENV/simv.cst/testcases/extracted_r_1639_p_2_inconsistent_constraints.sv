class c_1639_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1639_2;
    c_1639_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z1z10zxzx1z00zzz1x11z01x10zxzxzxzzzzzzxzxzxxzzzzxzxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
