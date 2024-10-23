class c_1044_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1044_2;
    c_1044_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxxzxzx0zx1xzx1zx1010z0x1xx10zxzxzzzzxxxxzzxzxzzzzzxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
