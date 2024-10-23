class c_1169_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1169_2;
    c_1169_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010xxxz011z010x0z11xxxx0z10xxxxzzzxxzzxzzxzxzzxxxxzzzzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
