class c_1615_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1615_2;
    c_1615_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0z1100xxzzx1zxzzx011xz1z110zxxxzzxxzzzzzxzzxzxzzxzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
