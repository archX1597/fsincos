class c_1197_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1197_2;
    c_1197_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x00101z1x11z011zzzz10zzx1xxzxzzxxxzxzzxzzzxxzzxzxxzxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
