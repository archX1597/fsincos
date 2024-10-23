class c_1488_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1488_2;
    c_1488_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzzzz10xx10100xx01x1x1xz111x01xzxzzzxxzzzzzxxzzxxzzxxxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
