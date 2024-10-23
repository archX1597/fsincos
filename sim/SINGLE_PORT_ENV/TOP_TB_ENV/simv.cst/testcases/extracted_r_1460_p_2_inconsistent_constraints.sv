class c_1460_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1460_2;
    c_1460_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110x0110xx110010001x1zx0xxx1z0xxzzxzxzzzzxzzxxzxxxxzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
