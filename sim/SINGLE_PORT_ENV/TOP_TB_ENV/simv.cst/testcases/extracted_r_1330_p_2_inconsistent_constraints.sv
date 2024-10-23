class c_1330_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1330_2;
    c_1330_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z01zx11x01zz1x10zxz1000xz0x0zxzxzzxzxzxzxxxxxzzxzxzxxxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
