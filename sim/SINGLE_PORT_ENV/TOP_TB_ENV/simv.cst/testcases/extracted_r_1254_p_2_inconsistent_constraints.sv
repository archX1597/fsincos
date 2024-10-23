class c_1254_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1254_2;
    c_1254_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1xz110z01z1xxxx10xzxxxx1xzzz1xxzzxxxzzxxzzzxxxzxxxxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
