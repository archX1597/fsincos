class c_1598_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1598_2;
    c_1598_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zxx11xz0xz111001xx01100xx0110xxzzxzxxzxxzxxzzzxxzzxxzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
