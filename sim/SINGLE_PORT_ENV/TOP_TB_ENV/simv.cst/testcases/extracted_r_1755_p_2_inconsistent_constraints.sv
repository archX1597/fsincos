class c_1755_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1755_2;
    c_1755_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z110100zxx0101x01zzz0z001xz1xxxzzzzzxxzzxxxxxxxxxxxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
