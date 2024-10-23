class c_1262_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1262_2;
    c_1262_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx1x1z0z110z1x1z1111x01x100xx1xzxxzzzzzzzxxxxzxxzzzxxxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
