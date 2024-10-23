class c_1724_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1724_2;
    c_1724_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xx0x00xzxzzzz1101xz1x00z11010xxzzzzxzxzzxxzzxxzxxzxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
