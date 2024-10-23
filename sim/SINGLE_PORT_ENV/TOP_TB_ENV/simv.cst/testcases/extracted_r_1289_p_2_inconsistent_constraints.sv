class c_1289_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1289_2;
    c_1289_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1x0x0x0z10xz11xxzz1z00zxxzxz1zxxzxzzzzxxzzxzxxxzzxxxzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
