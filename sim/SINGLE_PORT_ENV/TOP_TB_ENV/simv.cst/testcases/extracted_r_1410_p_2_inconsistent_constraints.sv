class c_1410_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1410_2;
    c_1410_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x100zxz1zxz0100xz0xx0z1x110x011xzxzxxxxzzzzxxzxxzxzzxzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
