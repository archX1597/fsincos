class c_1066_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1066_2;
    c_1066_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zz0x000101101z1x11x101100z010xxxxxzzxxxxxzzzzxxxxzzxzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
