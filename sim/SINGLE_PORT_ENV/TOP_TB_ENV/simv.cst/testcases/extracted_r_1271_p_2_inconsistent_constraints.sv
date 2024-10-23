class c_1271_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1271_2;
    c_1271_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011x10zxxx0z100z0001x10xz001z1xzzzzzxxxxzzzzzxxzzzzzzxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
