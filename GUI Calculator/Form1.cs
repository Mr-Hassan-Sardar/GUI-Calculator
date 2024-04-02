using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace GUI_Calculator
{
    public partial class Form1 : Form
    {
        double value1;
        double value2;
        char sign;
        double result;
        MySqlConnection connection = new MySqlConnection("Server=localhost;Database=CalculatorDB;Uid=root;Pwd=Fada#511f#@");

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "1";
            }
            else
            {
                textBox1.Text = textBox1.Text + "1";
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "2";
            }
            else
            {
                textBox1.Text = textBox1.Text + "2";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "3";
            }
            else
            {
                textBox1.Text = textBox1.Text + "3";
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "4";
            }
            else
            {
                textBox1.Text = textBox1.Text + "4";
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "5";
            }
            else
            {
                textBox1.Text = textBox1.Text + "5";
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "6";
            }
            else
            {
                textBox1.Text = textBox1.Text + "6";
            }
        }

        private void button12_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "7";
            }
            else
            {
                textBox1.Text = textBox1.Text + "7";
            }
        }

        private void button11_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "8";
            }
            else
            {
                textBox1.Text = textBox1.Text + "8";
            }
        }

        private void button10_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "9";
            }
            else
            {
                textBox1.Text = textBox1.Text + "9";
            }
        }

        private void button15_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "Error" || textBox1.Text.StartsWith("val1="))
            {
                textBox1.Text = "";
                textBox1.Text = textBox1.Text + "0";
            }
            else
            {
                textBox1.Text = textBox1.Text + "0";
            }
        }

        private void button16_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            sign = '+';
            textBox1.Text = "";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            sign = '-';
            textBox1.Text = "";
        }

        private void button9_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            sign = '*';
            textBox1.Text = "";
        }

        private void button13_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            sign = '/';
            textBox1.Text = "";
        }

        private void button17_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            result = value1 * value1;
            textBox1.Text = result.ToString();
            sign = 'q';
            button14_Click(sender, e);
        }

        private void button18_Click(object sender, EventArgs e)
        {
            value1 = double.Parse(textBox1.Text);
            result = Math.Sqrt(value1);
            textBox1.Text = result.ToString();
            sign = 's';
            button14_Click(sender, e);
        }



        private void button14_Click(object sender, EventArgs e)
        {
            value2 = double.Parse(textBox1.Text);

            if (sign == '+')
            {
                result = value1 + value2;
            }
            else if (sign == '-')
            {
                result = value1 - value2;
            }
            else if (sign == '*')
            {
                result = value1 * value2;
            }
            else if (sign == '/')
            {
                if (value2 == 0)
                {
                    textBox1.Text = "Error";
                    return;
                }
                result = value1 / value2;
            }


            string tableName = "";
            if (sign == '+')
            {
                tableName = "Addition_table";
            }
            else if (sign == '-')
            {
                tableName = "Subtraction_table";
            }
            else if (sign == '*')
            {
                tableName = "Multiplication_table";
            }
            else if (sign == '/')
            {
                tableName = "Division_table";
            }
            else if (sign == 's') // 's' for square root
            {
                tableName = "SquareRoot_table";
            }
            else if (sign == 'q') //'q' for square
            {
                tableName = "Square_table";
            }

            try
            {
                connection.Open();
                MySqlCommand command = connection.CreateCommand();
                if (sign == 's')
                {
                    command.CommandText = $"INSERT INTO {tableName} (Operand, Result) VALUES ({value1}, {result})";
                }
                else if (sign == 'q')
                {
                    command.CommandText = $"INSERT INTO {tableName} (Operand, Result) VALUES ({value1}, {result})";
                }
                else
                {
                    command.CommandText = $"INSERT INTO {tableName} (Operand1, Operand2, Result) VALUES ({value1}, {value2}, {result})";
                }
                command.ExecuteNonQuery();

                if (sign == 's')
                {
                    command.CommandText = $"SELECT Operand, Result FROM {tableName} ORDER BY id DESC LIMIT 1";
                }
                else if (sign == 'q')
                {
                    command.CommandText = $"SELECT Operand, Result FROM {tableName} ORDER BY id DESC LIMIT 1";
                }
                else
                {
                    command.CommandText = $"SELECT Operand1, Operand2, Result FROM {tableName} ORDER BY id DESC LIMIT 1";
                }
                MySqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    if (sign == 's')
                    {
                        double operand = reader.GetDouble(0);
                        double resultFromDB = reader.GetDouble(1);

                        textBox1.Text = $"val1={operand}, result={resultFromDB}";
                    }
                    else if (sign == 'q')
                    {
                        double operand = reader.GetDouble(0);
                        double resultFromDB = reader.GetDouble(1);

                        textBox1.Text = $"val1={operand}, result={resultFromDB}";
                    }
                    else
                    {
                        double operand1 = reader.GetDouble(0);
                        double operand2 = reader.GetDouble(1);
                        double resultFromDB = reader.GetDouble(2);

                        textBox1.Text = $"val1={operand1}, val2={operand2}, result={resultFromDB}";
                    }
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                    connection.Close();
            }
        }

    }
}
