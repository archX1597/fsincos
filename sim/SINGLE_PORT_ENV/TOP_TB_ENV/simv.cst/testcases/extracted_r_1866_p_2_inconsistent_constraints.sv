class c_1866_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1866_2;
    c_1866_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxxxxz0z00xx011xx1z0xxxz1z0z01zxxzxzzxzxxzxxzxzxzzxxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
