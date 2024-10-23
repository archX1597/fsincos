class c_1090_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1090_2;
    c_1090_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001110zx01x11x110zx0z11xz1x0111zzxzzxxxzzzzxzxxxzzxxxxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
