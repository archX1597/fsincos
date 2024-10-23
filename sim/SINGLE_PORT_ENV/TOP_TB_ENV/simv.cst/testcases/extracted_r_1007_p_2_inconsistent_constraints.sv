class c_1007_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1007_2;
    c_1007_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx11110zxzxx1xxx0z10xxzzzz1xz00zzxzzzzxxzxxxzzzzzzzxxzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
