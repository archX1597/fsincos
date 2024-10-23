class c_1084_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1084_2;
    c_1084_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011xxzx01zz00zz1x1xz10x0zxx1x0zxzxxzxxxzzxzxxxxxxzzxxxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
