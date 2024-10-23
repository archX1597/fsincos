class c_1714_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1714_2;
    c_1714_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zx0xzxxxx01xzxxzxz1xxzzzzz01xzzzxzxxzxxzzxzxxzxxzzxxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
