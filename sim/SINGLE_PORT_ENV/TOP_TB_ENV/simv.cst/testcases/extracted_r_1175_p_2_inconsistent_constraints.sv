class c_1175_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1175_2;
    c_1175_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz01x01xz110x1001x1xz0xz01001zxzxxzxxzxzzxzxxzxzzzxzzzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
