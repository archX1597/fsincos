class c_1817_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1817_2;
    c_1817_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x10z1x0zz1x0zx00zzzx1z1zxz011xxzzxxxxzzxxxzzzzxxxxzxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
