class c_1026_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1026_2;
    c_1026_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0zx0xz1x0xz01x1z000000z1zxxx1xxzzxxzxxzxzzzzzxxxzzxxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
