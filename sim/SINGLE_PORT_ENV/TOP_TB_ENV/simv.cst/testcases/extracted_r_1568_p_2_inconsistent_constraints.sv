class c_1568_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1568_2;
    c_1568_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z011x111zx00zz0zx1x1xxzzz1101xxxxzzxxzxzxxzxzzzxxzxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
