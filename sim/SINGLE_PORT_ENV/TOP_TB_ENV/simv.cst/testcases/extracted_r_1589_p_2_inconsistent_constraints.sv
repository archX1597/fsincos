class c_1589_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1589_2;
    c_1589_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx0111x11011z011z100zzx00xx10zxzxxxzzxxxzxxxxzxxzzxzxxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
