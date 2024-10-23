class c_1839_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1839_2;
    c_1839_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zx00x11010z000x001101xx11z1z0zxzzzxzxzxzzzxxxxxzxzzxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
