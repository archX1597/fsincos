class c_1849_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1849_2;
    c_1849_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz100z1zz0z1z1z11zz111110101zz0zxzxzzxxxzzzzxxxxzzxxxzzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
