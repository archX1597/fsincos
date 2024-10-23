class c_1217_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1217_2;
    c_1217_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1z01zz01z11xx00xx011z0x1100xxzxxzxzxzxxzxxxxxxxxzxzzzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
