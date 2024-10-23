class c_1923_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1923_2;
    c_1923_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1110zx10z0z1z1z00111xz0xxxz1zxxzzxzzzxxzzzzxxxxzzzxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
