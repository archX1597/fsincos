class c_1932_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1932_2;
    c_1932_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z10z1z00000011zz101z011x1x0z11zxzzzxxzxzzxxzzzxzzzxzxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram