class c_1112_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1112_2;
    c_1112_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z1z111xx0x0x1x1x0x1x001xzxxxzxxxzxzxxxzzxxzzxzxxzxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
