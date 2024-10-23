class c_1801_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1801_2;
    c_1801_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0zz0zx1z0zz0010xxxz1z1z0z010xxzzxxxxxxxxzxzzzzxzzzxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
