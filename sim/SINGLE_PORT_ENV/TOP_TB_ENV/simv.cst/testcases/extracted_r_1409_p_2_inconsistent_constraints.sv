class c_1409_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1409_2;
    c_1409_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000xxzzzz10xxx0xz01011x0zx11111zzzxzzxzxxxzzzxzzxxxxxxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
