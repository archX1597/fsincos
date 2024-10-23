class c_1834_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1834_2;
    c_1834_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zz11z0xz01x01x001z000001zzzzzzxxzzxxxxzxxxxxzxxzzxzxxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
