class c_1069_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1069_2;
    c_1069_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101001x1xx11x0x1xx0xzx11zxz1z0z0xxzxxzxzxxxzxxxxzzxxzzzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
