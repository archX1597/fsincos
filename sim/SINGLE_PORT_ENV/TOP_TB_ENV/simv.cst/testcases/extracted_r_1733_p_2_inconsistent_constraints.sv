class c_1733_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1733_2;
    c_1733_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x00z101101xxx0xxxx01xxzz01x1zxzxxxzzxxxxxzxxzzxxxxxxxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
