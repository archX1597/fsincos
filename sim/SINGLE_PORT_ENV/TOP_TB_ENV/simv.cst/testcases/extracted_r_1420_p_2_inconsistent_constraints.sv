class c_1420_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1420_2;
    c_1420_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0zz1zx11xxxz0zxxz1zx10z0111zxxxzzxzxxxzxxxzxzxxxxxzzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
