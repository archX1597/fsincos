class c_1227_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1227_2;
    c_1227_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11x1x1x1zxzxx10zx10z0010x1x000zzzxzxzxxxxxxxxzxzxxxxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
