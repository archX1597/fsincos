class c_1757_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1757_2;
    c_1757_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1x0001zxzz1111xz00zx1xz1z10xzzzxxxzzxzzxxzxzzzxzxzzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
