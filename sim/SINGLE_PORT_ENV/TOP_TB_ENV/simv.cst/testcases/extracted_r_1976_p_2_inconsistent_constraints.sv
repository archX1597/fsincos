class c_1976_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1976_2;
    c_1976_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1xx0xzxz0zx0x1z0x1x0zz0000xx1xxzzzzxxxzxxxxzzzzxzxxxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
