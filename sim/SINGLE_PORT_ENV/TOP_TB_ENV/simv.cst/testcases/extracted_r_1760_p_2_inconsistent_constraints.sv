class c_1760_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1760_2;
    c_1760_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx010z11xzxzxzxzzz0z0x0zx11x10xzxxxzzzzzxxxxzzzzxzzxxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
