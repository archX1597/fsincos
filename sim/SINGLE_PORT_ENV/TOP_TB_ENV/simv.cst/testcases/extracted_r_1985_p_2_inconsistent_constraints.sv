class c_1985_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1985_2;
    c_1985_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz01zzzx01110x0x11xzzxxxx1100xzzzxzzxxxxzxzzzzxxzxzzzzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
