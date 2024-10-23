class c_1166_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1166_2;
    c_1166_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000z1zxx1011x0xzzxz11xxxz0x0010xxzxzxzxzzzzxzzzxzxzxzxzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
