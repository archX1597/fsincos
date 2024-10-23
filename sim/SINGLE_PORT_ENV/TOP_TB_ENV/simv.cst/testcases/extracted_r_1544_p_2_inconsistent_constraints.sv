class c_1544_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1544_2;
    c_1544_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz00x0x1z1z0zxzzzx10z1x11x1x01zxzxzzzxxzxzzzzxxxzxzzxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
