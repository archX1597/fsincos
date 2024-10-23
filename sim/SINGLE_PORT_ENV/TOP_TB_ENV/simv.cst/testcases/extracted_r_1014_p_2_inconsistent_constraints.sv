class c_1014_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1014_2;
    c_1014_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1010zzz10010xx00z11z1zzx0101zzzxzzxzzzzxzzzzxzzxxxxxxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
