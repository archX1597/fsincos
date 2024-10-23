class c_1401_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1401_2;
    c_1401_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zz010101zz0z0zxx10xz10xxx10x1zxxzxxxxzxxzxxzxxzzzzxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
