class c_1035_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1035_2;
    c_1035_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0x110z10xzzz0xxx00z1x1z0000xzxzzzzxxzxzzzxxxzzzzxxxzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
