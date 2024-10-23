class c_1251_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1251_2;
    c_1251_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x101z0zx0xzxxx0z1zx000x010001xxzzzzxxzzzxzxzzzzzzzxxxxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
