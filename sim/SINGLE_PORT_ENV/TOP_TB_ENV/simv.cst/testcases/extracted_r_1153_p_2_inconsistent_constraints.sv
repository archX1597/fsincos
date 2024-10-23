class c_1153_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1153_2;
    c_1153_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xzxzz111z0x1x10x1z1xx011x1x0zxxzxxxxzzzxxxxzzzzxxxxxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
